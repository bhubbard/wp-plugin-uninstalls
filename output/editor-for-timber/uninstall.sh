#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timber-editor_general_supported-post-types'
wp option delete 'timber-editor_codemirror_theme'

