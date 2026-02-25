#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redaction_io_apikey'
wp option delete 'classic-editor-replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_regenerate_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_regenerate_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_regenerate_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_regenerate_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_task_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_task_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_task_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_task_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_task_total_stage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_task_total_stage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_task_total_stage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_task_total_stage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_task_current_stage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_task_current_stage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_task_current_stage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_task_current_stage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redaction_io_task_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redaction_io_task_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redaction_io_task_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redaction_io_task_id'"
