class A::MdwaContatoConfiguracaoController < A::BackendController

	skip_load_and_authorize_resource
  skip_authorization_check

	def index
	end

	def salvar

		Settings['MDWA_CONTATO.email_administrador'] 	= params[:email_administrador]
		Settings['MDWA_CONTATO.nome_site'] 						= params[:nome_site]
		Settings['MDWA_CONTATO.url_site'] 						= params[:url_site]
		Settings['MDWA_CONTATO.assinatura_email']			= params[:assinatura_email]

		respond_to do |format|
			format.html {redirect_to a_mdwa_contato_configuracao_index_path, notice: t('mdwa_contato.configuracao.salvar_notice')}
		end
	end

end