#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ProvideSupport plugin version'
wp option delete 'f7settings'
wp option delete 'f7code'
wp option delete 'f7accountName'
wp option delete 'f7accountHash'
wp option delete 'f7hiddencode'
wp option delete 'f7jsFile'

