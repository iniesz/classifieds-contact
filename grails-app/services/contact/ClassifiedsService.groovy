package contact

import grails.util.Environment

class ClassifiedsService {

	static transactional = true

	/**
	 * Users with direct webpage contact available.
	 */
	public static final def WEBPAGE_CONTACT_USER_IDS = [0, -1];

	/**
	 * Sites with email contact feature on.
	 */
	public static final def EMAIL_CONTACT_SITE_IDS_ON = ["MLV", "MCO", "MLA"];

	/**
	 * Users with email contact feature available even if site is off.
	 */
	public static final def EMAIL_CONTACT_USER_IDS_WHITELIST = [0, -1];





	/**
	 * Mock item method
	 */
	static def mockItem() {
		def seller_contact = [contact: "TEST_contact", other_info: "TEST_other_info", area_code: "TEST_area_code", phone: "TEST_phone",
					area_code2: "TEST_area_code2", phone2: "TEST_phone2", email: "TEST_email", webpage: "http://www.mockwebpage.com"];
		def item = [id : "TEST123456", seller_contact: seller_contact, site_id: "MLV"];
		return item;
	}

	/**
	 * Mock user method
	 */
	static def mockUser() {
		def user = [id:9999999, user_type:"TEST_user_type", site_id : "MLV", status :"TEST_status"]
		return user;
	}

	private def attrs;

	ClassifiedsService(def attrs) {
		this.attrs = attrs;
	}

	/**
	 * Returns true if user could show information in vip.
	 * @return
	 */
	public boolean isContactInformartionAvailable() {
		return true;
	}

	/**
	 * Returns true if user could be directly contacted by email.
	 * @return
	 */
	public boolean isEmailContactAvailable() {
		if (Environment.currentEnvironment == Environment.DEVELOPMENT ) {
			try{
				if(attrs.parameters.isEmailContactAvailable){
					if("true".equals(attrs.parameters.isEmailContactAvailable[0])){
						return true;
					} else if ("false".equals(attrs.parameters.isEmailContactAvailable[0])){
						return false;
					}
				}
			}catch(Exception e){
			}
		}
		if(!isWebPageContactAvailable()){
			if(EMAIL_CONTACT_SITE_IDS_ON.contains(attrs.item.site_id)) {
				if(attrs.item.seller_contact) {
					def seller_contact = attrs.item.seller_contact;
					if(seller_contact.email) {
						return true;
					}
				}
			}
		}
		return false;
	}

	/**
	 * Returns true if user could be contacted by questions.
	 * @return
	 */
	public boolean isQuestionsContactAvailable() {
		if(!isEmailContactAvailable()) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * Returns true if user could be directly contacted by his webpage.
	 * @return
	 */
	public boolean isWebPageContactAvailable() {
		if (Environment.currentEnvironment == Environment.DEVELOPMENT ) {
			try{
				if("true".equals(attrs.parameters.isWebPageContactAvailable[0])){
					return true;
				} else if ("false".equals(attrs.parameters.isWebPageContactAvailable[0])){
					return false;
				}
			}catch(Exception e){
			}
		}
		if(attrs.user) {
			if(attrs.user.id){
				return WEBPAGE_CONTACT_USER_IDS.contains(attrs.user.id);
			}
		}
		return false;
	}
}
