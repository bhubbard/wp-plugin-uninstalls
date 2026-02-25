#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpml-opts'
wp option delete 'wpml-linesperpage'
wp option delete 'wpml_excludes'
wp option delete 'wpml_use_smilies_backup'

