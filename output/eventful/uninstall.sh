#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eventful_version'
wp option delete 'eventful_first_version'
wp option delete 'eventful_activation_date'
wp option delete 'eventful_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"
wp option delete 'eventful_db_version'
wp option delete 'eventful_settings'

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventful_layouts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventful_layouts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventful_layouts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventful_layouts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventful_view_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventful_view_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventful_view_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventful_view_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_eventful_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_eventful_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_eventful_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_eventful_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_featured'"
