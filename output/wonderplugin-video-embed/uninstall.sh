#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderplugin_videoembed_keepdata'
wp option delete 'wonderplugin_videoembed_disableupdate'
wp option delete 'wonderplugin_videoembed_addjstofooter'
wp option delete 'wonderplugin_videoembed_zindex'
wp option delete 'wonderplugin_videoembed_information'

