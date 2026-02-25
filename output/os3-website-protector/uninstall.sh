#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'os3_protector_themes'
wp option delete 'os3_protector_plugins'
wp option delete 'os3_protector_uploads'

