package contact

import grails.test.*

class ClassifiedsTagLibTests extends TagLibUnitTestCase {
	protected void setUp() {
		super.setUp()
	}

	protected void tearDown() {
		super.tearDown()
	}

	/**
	 * Test taglib receaving correct SellerContact structure
	 */
	void testRendereableContactButton() {
		def item = ClassifiedsService.mockItem();
		def user = ClassifiedsService.mockUser();
		def returnedHtml = new ClassifiedsTagLib().contactButton(item: item, user:user);

		assertFalse "".equals(returnedHtml);
	}

	/**
	 * Test taglib not receaving correct SellerContact structure
	 */
	void testNoRendereableContactButton() {
		def item = ClassifiedsService.mockItem();
		def user = ClassifiedsService.mockUser();
		item.seller_contact = null;
		def returnedHtml = new ClassifiedsTagLib().contactButton(item:item, user:user);

		assertFalse "".equals(returnedHtml);
	}
}
