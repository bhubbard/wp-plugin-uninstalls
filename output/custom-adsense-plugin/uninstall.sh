#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expertpost_options_posthtml'
wp option delete 'expertpost_options_classname'
wp option delete 'expertpost_options_homeposturl'
wp option delete 'expertpost_options_singleposturl'

