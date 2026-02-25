#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'traqueamento'
wp option delete 'produto'
wp option delete 'categoria'
wp option delete 'keywords'
wp option delete 'compre_ja'
wp option delete 'mercado_pago'
wp option delete 'min'
wp option delete 'max'
wp option delete 'style'

