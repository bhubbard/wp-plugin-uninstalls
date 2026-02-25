#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcf_show_in_dnd_file_uploader_in'
wp option delete 'wcf_show_in_dnd_file_upload_after'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_text%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_separator%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_browse_text%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_server_limit%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_files_too_large%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_invalid_file%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_min_file%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_max_number_of_files%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_max_file%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_of_text%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_deleting_text%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_remove_text%'"
wp option delete 'wcf_drag_n_drop_error_failed_to_upload'
wp option delete 'wcf_drag_n_drop_support_file_upload'
wp option delete 'wcf_drag_n_drop_error_invalid_file'
wp option delete 'wcf_drag_n_drop_error_files_too_large'
wp option delete 'wcf_drag_n_drop_disable'
wp option delete 'wcf_drag_n_drop_field_name'
wp option delete 'wcf_drag_n_drop_file_size_limit'
wp option delete 'wcf_drag_n_drop_max_file_upload'
wp option delete 'wcf_drag_n_drop_min_file_upload'
wp option delete 'wcf_drag_n_drop_default_label'
wp option delete 'wcf_drag_n_drop_required'
wp option delete 'wcf_drag_n_drop_error_min_file'
wp option delete 'show_in_dnd_file_uploader_in'
wp option delete 'show_in_dnd_file_upload_after'

# Clear Cron Jobs
wp cron event delete 'wp_dnd_wc_daily_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_dnd_file_upload_wc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_dnd_file_upload_wc'"
