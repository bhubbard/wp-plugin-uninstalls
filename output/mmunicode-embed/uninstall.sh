#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uniemd_converter'
wp option delete 'uniembed_font'
wp option delete 'uniemd_forceCSS'
wp option delete 'uniemd_embed'
wp option delete 'uniemd_init'
wp option delete 'uniemd_jquery'

