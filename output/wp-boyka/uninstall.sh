#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boyka_compression_level'
wp option delete 'boyka_compress_thumbnails'
wp option delete 'boyka_compress_on_upload'
wp option delete 'boyka_disable_preview'
wp option delete 'boyka_verbose_mode'

