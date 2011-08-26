package contact

import grails.util.Environment




class ClassifiedsController {

	def index = {
	}

	def show = {
		def item = ClassifiedsService.mockItem();
		def user = ClassifiedsService.mockUser();
		def parameters;

		/**
		 * If DEVELOPMENT we send parameters to the service.
		 */
		if (Environment.currentEnvironment == Environment.DEVELOPMENT ) {
			parameters = request.getParameterMap();
		}else {
			parameters = [:];
		}
		[item:item, user:user, parameters:parameters]
	}
}
