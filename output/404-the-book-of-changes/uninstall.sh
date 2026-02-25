#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is-page-404tboc'
wp option delete 'page-404tboc'
wp option delete 'startText404tboc'
wp option delete 'text-button-main404tboc'
wp option delete 'text-button-continue404tboc'
wp option delete 'text-button-restart404tboc'
wp option delete 'is-text-button-restart404tboc'
wp option delete 'is-text-support404tboc'
wp option delete 'skin-404tboc'

