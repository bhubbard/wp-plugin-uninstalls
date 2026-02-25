#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blue-billywig-api-secret'
wp option delete 'blue-billywig-api-id'
wp option delete 'blue-billywig-publication'
wp option delete 'blue-billywig-playout'
wp option delete 'blue-billywig-playout-video-status'
wp option delete 'blue-billywig-embed'
wp option delete 'blue-billywig-page-count'
wp option delete 'bb_get_playout_list'
wp option delete 'blue-billywig-m-status'

