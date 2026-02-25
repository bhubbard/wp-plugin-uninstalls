#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdprcompatible_status'
wp option delete 'gdprcompatible_do_activation_redirect'

