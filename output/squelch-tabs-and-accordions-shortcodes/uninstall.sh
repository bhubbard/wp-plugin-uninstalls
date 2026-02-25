#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'squelch_taas_jquery_ui_theme'
wp option delete 'squelch_taas_vanity_url'
wp option delete 'squelch_taas_disable_magic_url'
wp option delete 'squelch_taas_custom_css_url'
wp option delete 'squelch_taas_v'

