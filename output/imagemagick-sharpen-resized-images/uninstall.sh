#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Radius'
wp option delete 'Sigma'
wp option delete 'Sharpening'
wp option delete 'Threshold'
wp option delete 'CompressionQuality'
wp option delete 'AutoConLev'

