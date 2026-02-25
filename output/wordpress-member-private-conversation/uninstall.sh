#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nmconvo_allow_attachment'
wp option delete 'nmconvo_size_limit'
wp option delete 'nmconvo_file_ext'
wp option delete 'nmconvo_file_limit'
wp option delete 'nmconvo_db_version'
wp option delete 'nmconvo_roles'
wp option delete 'nmconvo_notify_user'
wp option delete 'nmconvo_email_subject'
wp option delete 'nmconvo_email_message'
wp option delete 'nmconvo_sent_message'
wp option delete 'nmconvo_delete_message'
wp option delete 'nmconvo_off_bootstrap'
wp option delete 'nmconvo_convo_page'

