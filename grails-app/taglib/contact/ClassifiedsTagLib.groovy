package contact



/**
 * 
 * @author iniesz
 *
 */
class ClassifiedsTagLib {


	static namespace = "classifiedsContact"


	def test = { attrs ->
		def parameters = attrs.parameters;
		def item = attrs.item;
		def user = attrs.user;
		out << parameters.foo[0] + "TTTT";
	}
	/**
	 * Resolves contact button render
	 */
	def contactButton = { attrs ->
		def item = attrs.item;
		def user = attrs.user;
		def service = executeService(attrs);
		out <<  render (template: "/classifieds/contactButton", model:[item:item, user:user, service : service]);
	}

	/**
	 * Resolves contact information render
	 */
	def contactInformation = { attrs ->
		def item = attrs.item;
		def user = attrs.user;
		def service = executeService(attrs);
		out << render(template: "/classifieds/contactInformation", model:[item:item, user:user, service : service]);
	}


	/**
	 * Resolves questions render
	 */
	def questions = { attrs -> out << "TODO: Seccion de Questions!!!" }


	/**
	 * Returns service results as a boolean collection.
	 * @return
	 */
	private static def executeService(attrs) {
		ClassifiedsService service = new ClassifiedsService(attrs);
		def classifiedsService = [isEmailContactAvailable: service.isEmailContactAvailable(),
					isQuestionsContactAvailable: service.isQuestionsContactAvailable(),
					isWebPageContactAvailable: service.isWebPageContactAvailable()];
		return classifiedsService;
	}
}
