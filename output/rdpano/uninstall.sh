#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rdpano_title'
wp option delete 'rdpano_width'
wp option delete 'rdpano_height'
wp option delete 'rdpano_global_swf'
wp option delete 'rdpano_panopress'
wp option delete 'rdpano_panostudio'

