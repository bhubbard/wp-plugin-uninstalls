#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_proxy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activated'"
wp option delete 'bedrock_autoloader'
wp option delete 'nitropack-autoCachePurge'
wp option delete 'wlpr_settings'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'ic-settings'
wp option delete '_glsr_rebusify'
wp option delete 'sidebars_widgets'
wp option delete 'glsr_trustalyze'
wp option delete '_glsr_trustalyze'
wp option delete 'widget_site-reviews'
wp option delete 'widget_site-reviews-form'
wp option delete 'widget_site-reviews-summary'
wp option delete 'site_reviews'
wp option delete 'glsr_activated'
wp option delete 'glsr_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%rollback_version' OR option_name LIKE '_site_transient_%rollback_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%rollback_versions' OR option_name LIKE '_site_transient_%rollback_versions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%remote_post_test' OR option_name LIKE '_site_transient_%remote_post_test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%system_info' OR option_name LIKE '_site_transient_%system_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%gatekeeper' OR option_name LIKE '_site_transient_%gatekeeper'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cloudflare_ips' OR option_name LIKE '_site_transient_%_cloudflare_ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_remote_post_test' OR option_name LIKE '_site_transient_%_remote_post_test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%cloudflare_ips' OR option_name LIKE '_site_transient_%cloudflare_ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%notices' OR option_name LIKE '_site_transient_%notices'"
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'glsr_cloudflare_ips'
wp transient delete 'glsr_remote_post_test'
wp transient delete 'glsr_system_info'
wp transient delete 'glsr_migrations'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'site-reviews/schedule/session/purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submitted_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submitted_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submitted_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submitted_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verified'"
