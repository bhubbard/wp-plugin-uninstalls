#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viwse_background_render_processing'
wp option delete 'viwse_background_render_complete'
wp option delete 'viwse_params'
wp option delete 'vi_wse_woo_suggestion_engine_version'
wp option delete 'vi_wse_woocommerce_searched'
wp option delete 'vi_wse_woocommerce_viewed'
wp option delete 'vi_wse_woocommerce_product_atc'
wp option delete 'vi_wse_woo_suggestion_engine_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'viwse_background_running'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_viwse_background_processed_task_%' OR option_name LIKE '_site_transient_viwse_background_processed_task_%'"
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

