#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moka_wcp_wordcount'
wp option delete 'moka_wcp_charactercount'
wp option delete 'moka_wcp_readtime'
wp option delete 'moka_wcp_headline'
wp option delete 'moka_wcp_location'

