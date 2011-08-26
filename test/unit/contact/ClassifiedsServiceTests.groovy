package contact

import grails.test.*

class ClassifiedsServiceTests extends GrailsUnitTestCase {
	protected void setUp() {
		super.setUp()
	}

	protected void tearDown() {
		super.tearDown()
	}


	/**
	 * Test "isWebPageContactAvailable" method.
	 */
	void testIsWebPageContactAvailable() {
		def item = ClassifiedsService.mockItem();
		def user = ClassifiedsService.mockUser();
		def parameters = [item : item];
		ClassifiedsService service = new ClassifiedsService(parameters);
		def userIds = ClassifiedsConfig.getWebPageContactAvailableUserIds();

		assertTrue (!service.isWebPageContactAvailable() && !userIds.contains(parameters.user.id));
	}

	/**
	 * Test "isContactInformationAvailable" method.
	 */
	void testIsContactInformationAvailable() {
		def item = ClassifiedsService.mockItem();
		def parameters = [item : item];
		ClassifiedsService service = new ClassifiedsService(parameters);

		assertTrue service.isContactInformartionAvailable();
	}

	/**
	 * Test "isEmailContactAvailable" method.
	 */
	void testIsEmailContactAvailable() {
		def item = ClassifiedsService.mockItem();
		def parameters = [item : item];
		ClassifiedsService service = new ClassifiedsService(parameters);

		/*email ok*/
		assertTrue service.isEmailContactAvailable();

		/*email null*/
		parameters.item.seller_contact.email = null;
		assertFalse service.isEmailContactAvailable();

		/*seller_contact null*/
		parameters.item.seller_contact = null
		assertFalse service.isEmailContactAvailable();
	}


	/**
	 * Test Mock creation method.
	 */
	void testMock() {
		def item = ClassifiedsService.mockItem();
		assertTrue  (item != null && item.seller_contact != null);

		def user = ClassifiedsService.mockUser();
		assertTrue  (user.id != null && user.user_type != null);
	}
}
