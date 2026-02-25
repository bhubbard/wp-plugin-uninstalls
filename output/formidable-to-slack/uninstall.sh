#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fts_email_field_label'
wp option delete 'fts_first_name_field_label'
wp option delete 'fts_last_name_field_label'
wp option delete 'fts_slack_url'
wp option delete 'fts_slack_token'
wp option delete 'fts_slack_form'

