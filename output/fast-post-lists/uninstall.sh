#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fu_fastpostlists_style'
wp option delete 'fu_fastpostlists_headhtml'
wp option delete 'fu_fastpostlists_posthtml'
wp option delete 'fu_fastpostlists_foothtml'

