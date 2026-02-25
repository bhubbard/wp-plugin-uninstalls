#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'torrent_link_enabled'
wp option delete 'show_seed_leech_info'
wp option delete 'show_download_info'
wp option delete 'torrents_directory'

