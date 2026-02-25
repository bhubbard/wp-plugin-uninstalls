#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ibup_plugin_redirect'
wp option delete 'ibup_imageboss_active'
wp option delete 'ibup_imageboss_lazyload_active'
wp option delete 'ibup_imageboss_hosts'
wp option delete 'ibup_imageboss_source'

