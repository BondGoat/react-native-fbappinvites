import React, {
  PropTypes,
  Component
} from 'react';

import {
  View,
  Text,
  StyleSheet,
  NativeModules,
  TouchableHighlight,
} from 'react-native';

const { RNFBAppInvites } = NativeModules;

module.exports = {

  shareAppInvites(url, avatarUrl) {
    console.log("AAAAAAAAA");
    return RNFBAppInvites.shareAppInvites(url, avatarUrl);
  }
}
