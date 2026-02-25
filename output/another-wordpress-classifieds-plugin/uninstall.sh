#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awpcp_installationcomplete'
wp option delete 'awpcp_pagename_warning'
wp option delete 'widget_awpcplatestads'
wp option delete 'awpcp_db_version'
wp option delete 'awpcp-show-delete-browse-categories-page-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'awpcp-show-%'"
wp option delete 'awpcp-show-missing-paypal-merchant-id-setting-notice'
wp option delete 'awpcp-csv-import-session'
wp option delete 'awpcp-flush-rewrite-rules'
wp option delete 'awpcp-options'
wp option delete 'awpcp-debug'
wp option delete 'seo_ultimate_module_titles'
wp option delete 'awpcp-activated'
wp option delete 'awpcp-store-browse-categories-page-information'
wp option delete 'awpcp-maybe-fix-browse-categories-page-information'
wp option delete 'awpcp-installed'
wp option delete 'awpcp-installed-or-upgraded'
wp option delete 'awpcp-browse-categories-page-information'
wp option delete 'awpcp-categories-list-cache-keys'
wp option delete 'add_meta_tags_opts'
wp option delete 'awpcp_plugin_integrations'
wp option delete 'active_sitewide_plugins'
wp option delete 'awpcp-form-fields-order'
wp option delete 'awpcp-plugin-pages'
wp option delete 'awpcp-main-category-id'
wp option delete 'wordpress_api_key'
wp option delete 'awpcp-migrate-media-information-cursor'
wp option delete 'awpcp-migrate-regions-info-cursor'
wp option delete 'awpcp-upgrade-log'
wp option delete 'awpcp-ficflc-last-listing-id'
wp option delete 'awpcp_translation_files_with_outdated_textdomain'
wp option delete 'awpcp_mfpi_maybe_force_post_id'

# Delete Transients
wp transient delete 'awpcp-server-ip-address'

# Clear Cron Jobs
wp cron event delete 'doadexpirations_hook'
wp cron event delete 'doadcleanup_hook'
wp cron event delete 'awpcp_ad_renewal_email_hook'
wp cron event delete 'awpcp-clean-up-payment-transactions'
wp cron event delete 'awpcp-task-queue-event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'credit-plans-items-per-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'credit-plans-items-per-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'credit-plans-items-per-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'credit-plans-items-per-page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fees-items-per-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fees-items-per-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fees-items-per-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fees-items-per-page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_allowed_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_allowed_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_allowed_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_allowed_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__awpcp_admin_editor_validation_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__awpcp_admin_editor_validation_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__awpcp_admin_editor_validation_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__awpcp_admin_editor_validation_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__awpcp_admin_editor_save_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__awpcp_admin_editor_save_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__awpcp_admin_editor_save_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__awpcp_admin_editor_save_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__awpcp_admin_editor_pending_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__awpcp_admin_editor_pending_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__awpcp_admin_editor_pending_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__awpcp_admin_editor_pending_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_expired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_social_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_social_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_social_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_social_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_open_graph_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_open_graph_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_open_graph_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_open_graph_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_open_graph_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_open_graph_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_open_graph_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_open_graph_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpcp-account-balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpcp-account-balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpcp-account-balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpcp-account-balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_is_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_is_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_is_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_is_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_failed_media_migration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_failed_media_migration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_failed_media_migration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_failed_media_migration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_generate_intermediate_image_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_generate_intermediate_image_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_generate_intermediate_image_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_generate_intermediate_image_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__awpcp_migrated_attachments_filenames'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__awpcp_migrated_attachments_filenames'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__awpcp_migrated_attachments_filenames'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__awpcp_migrated_attachments_filenames'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awpcp_most_recent_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awpcp_most_recent_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awpcp_most_recent_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awpcp_most_recent_start_date'"
