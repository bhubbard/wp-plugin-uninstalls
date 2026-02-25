#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_page_id'
wp option delete 'fe_plugin_do_activation_redirect'
wp option delete 'futurio_active_time'
wp option delete 'kirki_telemetry_no_consent'
wp option delete 'elementor_onboarded'
wp option delete 'kirki_notices'
wp option delete 'futurio_maybe_later'
wp option delete 'futurio_review_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete '_wc_needs_pages'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_thumbnail_image_width'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_container_width'
wp option delete 'kirki_downloaded_font_files'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%metabox_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prefix'"

# Delete Transients
wp transient delete '_wc_activation_redirect'
wp transient delete 'kirki_googlefonts_cache'
wp transient delete 'kirki_googlefont_names_cache'
wp transient delete 'kirki_remote_url_contents'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'futurio_meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'futurio_meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'futurio_meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'futurio_meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_txn_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_txn_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_txn_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_txn_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_txn_pkg_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_txn_pkg_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_txn_pkg_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_txn_pkg_id'"
