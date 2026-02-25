#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mg_upc_post_stats'
wp option delete 'mg_upc_store_vote_ip'
wp option delete 'mg_upc_store_vote_anonymize_ip'
wp option delete 'mg_upc_flush_rewrite'
wp option delete 'mg_upc_single_page'
wp option delete 'mg_upc_archive_enable'
wp option delete 'mg_upc_item_per_page'
wp option delete 'mg_upc_list_per_page'
wp option delete 'mg_upc_ajax_load'
wp option delete 'mg_upc_share_buttons_client'
wp option delete 'mg_upc_db_version'
wp option delete 'mg_upc_single_page_mode'
wp option delete 'mg_upc_archive_filter_author'
wp option delete 'mg_upc_archive_filter_type'
wp option delete 'mg_upc_archive_item_per_page'
wp option delete 'mg_upc_single_title'
wp option delete 'mg_upc_archive_document_title'
wp option delete 'mg_upc_archive_item_template_desc'
wp option delete 'mg_upc_archive_item_template_user'
wp option delete 'mg_upc_archive_item_template_meta'
wp option delete 'mg_upc_archive_item_template'
wp option delete 'mg_upc_archive_item_template_cols_xxl'
wp option delete 'mg_upc_archive_item_template_cols_xl'
wp option delete 'mg_upc_archive_item_template_cols_lg'
wp option delete 'mg_upc_archive_item_template_cols_md'
wp option delete 'mg_upc_archive_item_template_cols_sm'
wp option delete 'mg_upc_archive_item_template_cols_xs'
wp option delete 'mg_upc_archive_item_template_thumbs_xxl'
wp option delete 'mg_upc_archive_item_template_thumbs_xl'
wp option delete 'mg_upc_archive_item_template_thumbs_lg'
wp option delete 'mg_upc_archive_item_template_thumbs_md'
wp option delete 'mg_upc_archive_item_template_thumbs_sm'
wp option delete 'mg_upc_archive_item_template_thumbs_xs'
wp option delete 'mg_upc_button_position'
wp option delete 'mg_upc_my_orderby'
wp option delete 'mg_upc_my_order'
wp option delete 'mg_upc_api_item_per_page'
wp option delete 'mg_upc_show_my_lists_menu'
wp option delete 'mg_upc_button_position_product'
wp option delete 'mg_upc_loop_button_position_product'
wp option delete 'mg_upc_modal_show_price'
wp option delete 'mg_upc_modal_show_stock'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'mg_upc_page_show_price'
wp option delete 'mg_upc_page_show_stock'
wp option delete 'mg_upc_page_add_to_cart'
wp option delete 'mg_upc_woo_activated'
wp option delete 'mg_upc_anh_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mg_upc_type_%'"
wp option delete 'mg_upc_texts'

# Delete Transients
wp transient delete 'mg_upc_maintenance_timed_job'

# Clear Cron Jobs
wp cron event delete 'mg_upc_cron_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mg_upc_listed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mg_upc_listed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mg_upc_listed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mg_upc_listed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mg_upc_listed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mg_upc_listed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mg_upc_listed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mg_upc_listed_%'"
