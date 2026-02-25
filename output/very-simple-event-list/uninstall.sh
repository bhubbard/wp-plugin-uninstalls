#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vsel-setting-100'
wp option delete 'vsel-setting-93'
wp option delete 'vsel-setting-38'
wp option delete 'vsel-setting-92'
wp option delete 'vsel-setting-58'
wp option delete 'vsel-setting-87'
wp option delete 'vsel-setting-94'
wp option delete 'vsel-setting-69'
wp option delete 'vsel-setting-88'
wp option delete 'vsel-setting-70'
wp option delete 'vsel-setting-55'
wp option delete 'vsel-setting-56'
wp option delete 'vsel-setting-57'
wp option delete 'vsel-setting-61'
wp option delete 'vsel-setting-46'
wp option delete 'vsel-setting-47'
wp option delete 'vsel-setting-50'
wp option delete 'vsel-setting-105'
wp option delete 'vsel-setting-66'
wp option delete 'vsel-setting-106'
wp option delete 'vsel-setting-35'
wp option delete 'vsel-setting-95'
wp option delete 'vsel-setting-59'
wp option delete 'vsel-setting-9'
wp option delete 'vsel-setting-62'
wp option delete 'vsel-setting-68'
wp option delete 'vsel-setting-15'
wp option delete 'vsel-setting-108'
wp option delete 'vsel-setting-36'
wp option delete 'vsel-setting-30'
wp option delete 'vsel-setting-53'
wp option delete 'vsel-setting-29'
wp option delete 'vsel-setting-13'
wp option delete 'vsel-setting-101'
wp option delete 'vsel-setting-51'
wp option delete 'vsel-setting-44'
wp option delete 'vsel-setting-98'
wp option delete 'vsel-setting-64'
wp option delete 'vsel-setting-8'
wp option delete 'vsel-setting-11'
wp option delete 'vsel-setting-12'
wp option delete 'vsel-setting-110'
wp option delete 'vsel-setting-33'
wp option delete 'vsel-setting-10'
wp option delete 'vsel-setting-27'
wp option delete 'vsel-setting-28'
wp option delete 'vsel-setting-42'
wp option delete 'vsel-setting-16'
wp option delete 'vsel-setting-17'
wp option delete 'vsel-setting-18'
wp option delete 'vsel-setting-19'
wp option delete 'vsel-setting-89'
wp option delete 'vsel-setting-20'
wp option delete 'vsel-setting-102'
wp option delete 'vsel-setting-96'
wp option delete 'vsel-setting-14'
wp option delete 'vsel-setting-63'
wp option delete 'vsel-setting-67'
wp option delete 'vsel-setting-21'
wp option delete 'vsel-setting-109'
wp option delete 'vsel-setting-37'
wp option delete 'vsel-setting-32'
wp option delete 'vsel-setting-54'
wp option delete 'vsel-setting-31'
wp option delete 'vsel-setting-1'
wp option delete 'vsel-setting-103'
wp option delete 'vsel-setting-52'
wp option delete 'vsel-setting-45'
wp option delete 'vsel-setting-65'
wp option delete 'vsel-setting-2'
wp option delete 'vsel-setting-3'
wp option delete 'vsel-setting-4'
wp option delete 'vsel-setting-111'
wp option delete 'vsel-setting-34'
wp option delete 'vsel-setting-6'
wp option delete 'vsel-setting-5'
wp option delete 'vsel-setting-7'
wp option delete 'vsel-setting-22'
wp option delete 'vsel-setting-23'
wp option delete 'vsel-setting-24'
wp option delete 'vsel-setting-25'
wp option delete 'vsel-setting-90'
wp option delete 'vsel-setting-26'
wp option delete 'vsel-setting-104'
wp option delete 'vsel-setting-71'
wp option delete 'vsel-setting-107'
wp option delete 'vsel-setting-72'
wp option delete 'vsel-setting-74'
wp option delete 'vsel-setting-97'
wp option delete 'vsel-setting-75'
wp option delete 'vsel-setting-80'
wp option delete 'vsel-setting-73'
wp option delete 'vsel-setting-86'
wp option delete 'vsel-setting-76'
wp option delete 'vsel-setting-77'
wp option delete 'vsel-setting-112'
wp option delete 'vsel-setting-78'
wp option delete 'vsel-setting-79'
wp option delete 'vsel-setting-81'
wp option delete 'vsel-setting-82'
wp option delete 'vsel-setting-83'
wp option delete 'vsel-setting-84'
wp option delete 'vsel-setting-91'
wp option delete 'vsel-setting-85'
wp option delete 'vsel-setting-60'
wp option delete 'vsel-setting-39'
wp option delete 'vsel-setting-48'
wp option delete 'vsel-setting-43'
wp option delete 'vsel-setting-40'
wp option delete 'vsel-setting-41'
wp option delete 'vsel-setting-99'
wp option delete 'vsel-setting-49'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-start-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-start-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-start-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-start-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-hide-end-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-hide-end-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-hide-end-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-hide-end-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-all-day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-all-day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-all-day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-all-day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-link-label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-link-label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-link-label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-link-label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-link-target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-link-target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-link-target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-link-target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-link-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-link-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-link-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-link-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-link-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-link-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-link-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-link-image'"
