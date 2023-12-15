

const deleteModal = document.getElementById('deleteModal')
if (deleteModal) {
  deleteModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient = button.getAttribute('idDel')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = deleteModal.querySelector('.modal-title')
    const modalBodyInput = deleteModal.querySelector('.modal-body input')

    modalBodyInput.value = recipient
  })
}


const updateModal = document.getElementById('updateModal')
if (updateModal) {
  updateModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    //datos de la fila en la tabla de listaAbogados
    const idUpd = button.getAttribute('idUpd')
    const nombre = button.getAttribute('nomUpd')
    const apellido = button.getAttribute('apeUpd')
    const email = button.getAttribute('emailUpd')
    const tel = button.getAttribute('telUpd')
    const resenia = button.getAttribute('reseniaUpd')
    const espId = button.getAttribute('espIdUpd')//para seleccionar en el combo
    
    
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    //datos que se pasan al form modal de Update
    const modalTitle = updateModal.querySelector('.modal-title')
    document.getElementById("idUpd").value=idUpd
    document.getElementById("nomUpd").value=nombre
    document.getElementById("apeUpd").value=apellido
    document.getElementById("emailUpd").value=email
    document.getElementById("telUpd").value=tel
    document.getElementById("reseniaUpd").value=resenia
    document.getElementById("espIdUpd").value=espId //para seleccionar en el combo
 
  })
}