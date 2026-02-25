#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcp_wordcount'
wp option delete 'wcp_charactercount'
wp option delete 'wcp_readtime'
wp option delete 'wcp_headline'
wp option delete 'wcp_location'

