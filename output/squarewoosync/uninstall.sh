#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'square-woo-sync_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_squaresync_credit_square_mode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'square_webhook_disabled'
wp option delete 'sws_site_secret'
wp option delete 'sws_version'
wp option delete 'woocommerce_squaresync_credit_settings'
wp option delete 'square-woo-sync_installed'
wp option delete 'square-woo-sync_version'
wp option delete 'squarewoosync_display_metadata'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'sws_square_locations'
wp transient delete 'sws_square_modifiers'
wp transient delete 'sws_square_categories'
wp transient delete 'sws_square_groups_segments'
wp transient delete 'square_webhook_request_count'
wp transient delete 'update_square_inventory_cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sws_order_processed_%' OR option_name LIKE '_site_transient_sws_order_processed_%'"
wp transient delete 'square_sync_success'
wp transient delete 'squarewoosync_sync_running'
wp transient delete 'squarewoosync_export_running'

# Clear Cron Jobs
wp cron event delete 'square-woo-sync_pro_cron_hook'
wp cron event delete 'sws_reset_is_fetching'
wp cron event delete 'sws_sync_inventory_after_product_sold_event'
wp cron event delete 'sws_sync_order_after_product_sold_event'
wp cron event delete 'squarewoosync_sync_bulk_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pws_modifier_sets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pws_modifier_sets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pws_modifier_sets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pws_modifier_sets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_refunds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_refunds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_refunds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_refunds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_inventory_restocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_inventory_restocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_inventory_restocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_inventory_restocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_group_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_group_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_group_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_group_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unique_image_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unique_image_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unique_image_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unique_image_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_skip_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_skip_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_skip_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_skip_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pmxi_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pmxi_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pmxi_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pmxi_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmp_square_var_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmp_square_var_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmp_square_var_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmp_square_var_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temporary_square_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temporary_square_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temporary_square_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temporary_square_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
