#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'respectify_error_notice_dismissed'
wp transient delete 'respectify_api_error'
wp transient delete 'respectify_last_error_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_respectify_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_respectify_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_respectify_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_respectify_article_id'"
