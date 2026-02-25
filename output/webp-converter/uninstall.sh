#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apwebp_enable'
wp option delete 'apwebp_image_quality'
wp option delete 'apwebp_use_htaccess'
wp option delete 'apwebp_dont_conv_image_sizes'

