#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpd_enabled_widgets'
wp option delete 'mpd_known_widgets'
wp option delete 'mpd_install_date'
wp option delete 'mgppro_license_key'
wp option delete 'mpd_menu_notice_version'
wp option delete 'mgppro_is_active'
wp option delete 'mpd_pro_notice_dismissed'
wp option delete 'mpd_revhide_date'
wp option delete 'mpd_rev_added'
wp option delete 'mpd_flush_rewrite_rules'
wp option delete 'mpd_general_settings'
wp option delete 'mpd_plugin_activated'
wp option delete 'mpd_version'
wp option delete 'mpd_plugin_version'
wp option delete 'mpd_widget_settings'
wp option delete 'mpd_db_version'
wp option delete 'mgppro_has_valid_lic'
wp option delete 'mpd_performance_settings'
wp option delete 'mpd_preloader_settings'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'mpd_template_cpt_version'
wp option delete 'elementor_cpt_support'
wp option delete 'mpd_default_preview_product'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_demo_store_notice'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'mpd_layout_server_activated'
wp option delete 'space_has_pro'
wp option delete 'mpd_delete_data_on_uninstall'

# Delete Transients
wp transient delete 'mpd_msc_image_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mpd_billing_settings_%' OR option_name LIKE '_site_transient_mpd_billing_settings_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mpd_shipping_settings_%' OR option_name LIKE '_site_transient_mpd_shipping_settings_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mpd_templates_%' OR option_name LIKE '_site_transient_mpd_templates_%'"

# Clear Cron Jobs
wp cron event delete 'mpd_daily_license_check'
wp cron event delete 'mpd_weekly_cleanup'
wp cron event delete 'mpd_cleanup_rate_limits'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_template_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_template_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_template_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_template_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_template_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_template_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_template_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_template_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_template_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_template_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_template_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_template_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_preview_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_preview_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_preview_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_preview_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpd_elementor_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpd_elementor_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpd_elementor_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpd_elementor_pro_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_prelayout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_prelayout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_prelayout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_prelayout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_prelayout_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_prelayout_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_prelayout_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_prelayout_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_layout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_layout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_layout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_layout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_layout_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_is_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_is_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_is_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_is_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_layout_structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_layout_structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_layout_structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_layout_structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpd_layout_widgets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpd_layout_widgets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpd_layout_widgets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpd_layout_widgets'"
