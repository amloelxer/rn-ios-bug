import React from 'react';
import { requireNativeComponent, TouchableOpacity } from 'react-native';

export default class TestNativeView extends React.Component {
  render() {
    return <TableView {...this.props} />;
  }
}
const TableView = requireNativeComponent('TestTableView');