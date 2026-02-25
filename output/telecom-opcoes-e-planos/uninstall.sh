#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'company_name'
wp option delete 'company_cnpj'
wp option delete 'company_sobre_titulo'
wp option delete 'company_sobre_texto'
wp option delete 'company_cobertura'
wp option delete 'company_endereco'
wp option delete 'company_endereco_maps'
wp option delete 'company_horario'
wp option delete 'central_nome'
wp option delete 'central_url'
wp option delete 'app_titulo'
wp option delete 'app_subtitulo'
wp option delete 'app_url_android'
wp option delete 'app_url_ios'
wp option delete 'company_phone1'
wp option delete 'company_phone2'
wp option delete 'company_email'
wp option delete 'company_whatsapp'
wp option delete 'company_instagram'
wp option delete 'company_facebook'
wp option delete 'top_slides_desktop'
wp option delete 'top_slides_mobile'
wp option delete 'observacoes_planos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'faq_pergunta_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'faq_resposta_%'"
wp option delete 'top_pro_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_velocidade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_velocidade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_velocidade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_velocidade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_unidade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_unidade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_unidade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_unidade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_velocidade_planometro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_velocidade_planometro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_velocidade_planometro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_velocidade_planometro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_preco'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_preco'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_preco'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_preco'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_tecnologia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_tecnologia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_tecnologia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_tecnologia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_tecnologia_imagem'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_tecnologia_imagem'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_tecnologia_imagem'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_tecnologia_imagem'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_diferencial1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_diferencial1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_diferencial1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_diferencial1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_diferencial2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_diferencial2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_diferencial2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_diferencial2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_diferencial3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_diferencial3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_diferencial3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_diferencial3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_diferencial4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_diferencial4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_diferencial4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_diferencial4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_diferencial5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_diferencial5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_diferencial5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_diferencial5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_destaque'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_destaque'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_destaque'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_destaque'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_combo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_combo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_combo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_combo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_tipo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_tipo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_tipo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_tipo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_cidades'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_cidades'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_cidades'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_cidades'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_categorias'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_categorias'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_categorias'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_categorias'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_texto_combo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_texto_combo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_texto_combo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_texto_combo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_observacoes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_observacoes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_observacoes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_observacoes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_plan_bairros'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_plan_bairros'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_plan_bairros'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_plan_bairros'"
