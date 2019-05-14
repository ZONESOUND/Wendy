const socket = io('https://two-ways-transmission.herokuapp.com/')
// const socket = io('http://localhost:8000')

let uuid_list = []

socket.on('connect', () => {

    socket.emit('server',{
        'show': true
    })

    socket.on('serverDisplay', (data) => {
        update(data)
    });

})


function update(data) {
    $('ul').html('')
    uuid_list = data['clientList']
    for (i in uuid_list) {
        $('ul').append(`<li class="list-group-item">${i*1+1}:  ${uuid_list[i]}</li>`)
    }
}