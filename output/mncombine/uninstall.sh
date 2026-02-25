#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mn_comine_assets'
wp option delete 'mn_compression_engine'
wp option delete 'mn_compile_mode'
wp option delete 'mn_force_combine'
wp option delete 'mn_css_compression'
wp option delete 'mn_exclude_css_regex'
wp option delete 'mn_exclude_js_regex'

