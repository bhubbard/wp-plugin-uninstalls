#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_root_dir'
wp option delete 'sm_mode'
wp option delete 'stateless-modules'
wp option delete 'sm_bucket'
wp option delete 'sm_key_json'
wp option delete 'active_sitewide_plugins'
wp option delete 'wp_sm_version'
wp option delete 'sm_on_fly'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%'"
wp option delete 'sm.mode'
wp option delete 'sm.service_account_name'
wp option delete 'sm_service_account_name'
wp option delete 'sm.key_file_path'
wp option delete 'sm_key_file_path'
wp option delete 'sm.bucket'
wp option delete 'sm.app_name'
wp option delete 'sm.body_rewrite'
wp option delete 'sm.bucket_url_path'
wp option delete 'sm.post_content_rewrite'
wp option delete 'dismissed_notice_stateless_cache_busting'
wp option delete 'sm_hashify_file_name'
wp option delete 'sm_dynamic_image_support'
wp option delete 'wp_stateless_jwt_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activated'"
wp option delete 'dismissed_ud_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ud_ping_%'"
wp option delete 'ud_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_no_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_no_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exp_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hold_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cancelled_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exp_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_suspended_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pending_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_trash_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_no_activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_download_revoked'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_switched_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed_warning_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-current-version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-splash-version'"
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'wp_stateless_google_sdk_conflict'
wp transient delete 'sm::is_connected_to_gs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stateless_url_to_postid_%' OR option_name LIKE '_site_transient_stateless_url_to_postid_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sm-wp-smush-backup-exists-%' OR option_name LIKE '_site_transient_sm-wp-smush-backup-exists-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_ping' OR option_name LIKE '_site_transient_%_ping'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-more-a' OR option_name LIKE '_site_transient_%-more-a'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-more' OR option_name LIKE '_site_transient_%-more'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-request-error' OR option_name LIKE '_site_transient_%-request-error'"
wp transient delete 'random_seed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:fileLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:fileLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:fileLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:fileLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:storageClass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:storageClass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:storageClass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:storageClass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:mediaLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:mediaLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:mediaLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:mediaLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:selfLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:selfLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:selfLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:selfLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:bucket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:bucket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:bucket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:bucket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud:object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud:object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud:object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud:object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:fileLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:fileLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:fileLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:fileLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:mediaLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:mediaLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:mediaLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:mediaLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:selfLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:selfLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:selfLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:selfLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
