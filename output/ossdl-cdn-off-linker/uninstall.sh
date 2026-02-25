#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ossdl_off_exclude'
wp option delete 'ossdl_off_cdn_url'
wp option delete 'ossdl_off_include_dirs'
wp option delete 'ossdl_off_rootrelative'

