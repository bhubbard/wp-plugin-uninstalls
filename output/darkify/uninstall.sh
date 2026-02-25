#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'darkify'
wp option delete 'classic-editor-replace'
wp option delete 'darkify_version'
wp option delete 'darkify_first_version'
wp option delete 'darkify_activation_date'
wp option delete 'darkify_db_version'
wp option delete 'darkify_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_darkify_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_darkify_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_darkify_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_darkify_errors_%'"
