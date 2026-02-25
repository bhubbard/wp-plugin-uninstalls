#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'showtext_options'
wp option delete 'language_options'
wp option delete 'cmt_meta_version'

