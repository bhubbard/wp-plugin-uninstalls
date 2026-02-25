#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mk_adblock_title'
wp option delete 'mk_adblock_description'
wp option delete 'mk_adblock_elements'
wp option delete 'mk_adblock_hide_video'
wp option delete 'mk_adblock_required'

