var Message = React.createClass({
	getInitialState: function() {
		return {
			messages: this.props.data
		}
	},
  render: function() {
    var messageNodes = this.state.messages.map(function(m){
    	var date = m.date
      return <div key={m.id} >Data: { date } | Message: {m.message} </div>
    })
    return (
      <div>
        <h1>Messages</h1>
        {messageNodes}
      </div>
    );
  }
});
