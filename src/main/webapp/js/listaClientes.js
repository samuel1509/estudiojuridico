

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
    const idUpd = button.getAttribute('idUpd')
    const nombre = button.getAttribute('nomUpd')
    const apellido = button.getAttribute('apeUpd')
    const email = button.getAttribute('emailUpd')
    const cuit = button.getAttribute('cuitUpd')
    const dni = button.getAttribute('dniUpd')
    const domicilio = button.getAttribute('domUpd')
    
    
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = updateModal.querySelector('.modal-title')
    document.getElementById("idUpd").value=idUpd
    document.getElementById("nomUpd").value=nombre
    document.getElementById("apeUpd").value=apellido
    document.getElementById("emailUpd").value=email
    document.getElementById("cuitUpd").value=cuit
    document.getElementById("dniUpd").value=dni
    document.getElementById("domUpd").value=domicilio
 
  })
}