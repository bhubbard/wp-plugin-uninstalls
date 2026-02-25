#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'melhor_envio_option_where_show_calculator'
wp option delete 'woocommerce_weight_unit'
wp option delete 'melhor_envio_path_plugins'
wp option delete 'wpmelhorenvio_token'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'melhorenvio_hide_calculator_product'
wp option delete 'melhorenvio_options'
wp option delete 'melhorenvio_use_insurancce'
wp option delete 'melhor_envio_option_label'
wp option delete 'melhor_envio_option_dimension_default'
wp option delete 'melhorenvio_installed'
wp option delete 'melhorenvio_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_cnpj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_cnpj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_cnpj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_cnpj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_cellphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_cellphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_cellphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_cellphone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'melhor_envio_log_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'melhor_envio_log_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'melhor_envio_log_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'melhor_envio_log_order'"
