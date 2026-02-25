#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'br61_key'
wp option delete 'br61_cron'
wp option delete 'br61_importar_imagem'
wp option delete 'br61_importar_resumo'
wp option delete 'br61_backlink'
wp option delete 'br61_autor'
wp option delete 'br61_status'
wp option delete 'br61_data_importacao'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'b61_categoria_last_page_%'"
wp option delete 'br61_categorias'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'b61_tag_last_page_%'"
wp option delete 'br61_tags'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'b61_categoria_total_pages_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'b61_tag_total_pages_%'"
wp option delete 'b61_post_update_date'
wp option delete 'b61_update_last_page'

# Clear Cron Jobs
wp cron event delete 'br61_cron_hook'
wp cron event delete 'br61_cron_post_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b61_post_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b61_post_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b61_post_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b61_post_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b61_noticia_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b61_noticia_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b61_noticia_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b61_noticia_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'br61_post_create_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'br61_post_create_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'br61_post_create_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'br61_post_create_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'br61_post_update_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'br61_post_update_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'br61_post_update_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'br61_post_update_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'br61_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'br61_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'br61_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'br61_post_id'"
