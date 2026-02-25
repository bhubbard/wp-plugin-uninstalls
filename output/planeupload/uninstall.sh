#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'planeupload_enc_key'
wp option delete 'planeupload_options'
wp option delete 'planeupload_prototype'

