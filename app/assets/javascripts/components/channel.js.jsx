var Channel = React.createClass({
  getInitialState: function() {
    return {
      channels: this.props.data
    }
  },
  render: function() {
    var channelNodes = this.state.channels.map(function(c){
      return <div key={c.id}>Name: {c.name} </div>
    })
    return (
      <div>
        <h1>Channels</h1>
        {channelNodes}
      </div>
    );
  }
});
