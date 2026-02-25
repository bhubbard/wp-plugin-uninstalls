#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embedder_scrollmethod'
wp option delete 'embedder_scrolling'
wp option delete 'embedder_class'
wp option delete 'embedder_border'
wp option delete 'embedder_style'

