#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf_image_resizing_siteurl'
wp option delete 'cf_image_resizing_sitefolder'
wp option delete 'cf_image_resizing_homedir'
wp option delete 'cf_image_resizing_hook_1'
wp option delete 'cf_image_resizing_hook_2'
wp option delete 'cf_image_resizing_hook_3'
wp option delete 'cf_image_resizing_hook_4'
wp option delete 'cf_image_resizing_hook_5'
wp option delete 'cf_image_resizing_hook_6'
wp option delete 'cf_image_resizing_fit'
wp option delete 'cf_image_resizing_quality'
wp option delete 'cf_image_resizing_format'
wp option delete 'cf_image_resizing_metadata'
wp option delete 'cf_image_resizing_onerror'
wp option delete 'cf_image_resizing_strip_img_sizes'
wp option delete 'cf_image_resizing_add_img_sizes'
wp option delete 'cf_image_resizing_fix_vc_composer'
wp option delete 'cf_image_resizing_whitelist'
wp option delete 'cf_image_resizing_whitelist_urls'
wp option delete 'cf_image_resizing_admin_notice_dismissed'

