#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ichigen_san_enabling'
wp option delete 'ichigen_san_basic_user'
wp option delete 'ichigen_san_basic_pass'
wp option delete 'ichigen-san-convert'
wp option delete 'ichigen-san-initialization'

