#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eazycfc_label_text'
wp option delete 'eazycfc_honeypot'
wp option delete 'eazycfc_easy'
wp option delete 'eazycfc_disable_comment_form'

