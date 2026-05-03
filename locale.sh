#!/usr/bin/env sh

LOCALE="en_US.UTF-8"
LOCALE_GEN="/etc/locale.gen"
LOCALE_CONF="/etc/locale.conf"

if grep -q "^${LOCALE}" "$LOCALE_GEN"; then
    echo "locale already enabled: $LOCALE"
else
    sed -i "s/^#${LOCALE}/${LOCALE}/" "$LOCALE_GEN"
    echo "enabled: $LOCALE"
fi

locale-gen

if [ ! -f "$LOCALE_CONF" ] || ! grep -q "^LANG=${LOCALE}" "$LOCALE_CONF"; then
    echo "LANG=${LOCALE}" > "$LOCALE_CONF"
    echo "set LANG=${LOCALE} in $LOCALE_CONF"
fi
